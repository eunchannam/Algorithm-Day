plant_list = list()

def wormed(plant):

    global plant_list

    if (plant in plant_list):
        plant_list.remove(plant)

        wormed([plant[0]+1, plant[1]])
        wormed([plant[0]-1, plant[1]])
        wormed([plant[0], plant[1]-1])
        wormed([plant[0], plant[1]+1])

    


for _ in range(int(input())):

    plant_list.clear()

    answer = 0

    size_x, size_y, count = map(int, input().split())

    for __ in range(count):

        x, y = map(int, input().split())

        plant_list.append([x, y])


    next_list = []

    while (plant_list):

        plant = plant_list[0]

        wormed(plant)

        answer += 1
        
    print(answer)

import java.util.Map;

Map<String, String> arguments;

void makeMap(String[] args) {
    arguments = new HashMap<String, String>();

    for (int i = 0; i < args.length; i++) {
        if (args[i].contains("=")) {
            arguments.put(args[i].substring(0, args[i].indexOf('=')),
            args[i].substring(args[i].indexOf('=') + 1));
        }
    }
}
